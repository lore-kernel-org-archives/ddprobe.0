Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4985F219A8E
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738708554; cv=none; b=MrlISsKZnjjoUAK9wQH4I5DYUte7lU8W1k6lr0zT4LsPG1QIomMKyeleUjENkbm3yiS3PYQNE2/MYcckI3V4ADajVAOXuYT76A9MxVIQ/c3g+dTTvfxzgj/uUeaBZFE0wd/cQO1yqnZDb2ghe1IFDe4fMS7jB8XQNapONOtj6yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738708554; c=relaxed/simple;
	bh=JkWRehOUzGw4j6dkgDeauf1jGllr5BcyIOK0xSHrlMw=;
	h=To:Subject:From:Message-Id:Date; b=RvF+sDVDN2SSB1KrpkEsfIhQIdYP0IVOCs2wsrsW8ELTfQxCvnIViNrpq8bsRdfBXsL3zcr61ejzcPbB/fNnlyyJthj1T8KotzYKzRogP5msq10GUQ7KSJ88pSS1lNzlQsLioq7n9qoMil1wqjxNvcPiegUjfhWhqUCnkl3fFmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmzd2/1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmzd2/1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EABC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738708553;
	bh=JkWRehOUzGw4j6dkgDeauf1jGllr5BcyIOK0xSHrlMw=;
	h=To:Subject:From:Date:From;
	b=gmzd2/1GpMEh2BFKQYgDGfmFVtt8pUN+u+iQLfVrWUuJi611v1/ShQ4fbBdlLdCQK
	 ViN4zUqnKSvzRh3JydpgrzM2Y9p6I6OqZlmADdINgIBu+F+bCI+rxaVMl+d9xq7ZiN
	 3xHMyoFzAAZKoK4f/qUML6k+TqcdptGrmJVGfI5PzJTk/Z0qEH+c/ZS4uBW4kONSMi
	 6MP8zSpSMagqD7MBzr5zhN53+V5HnFLPfjtGC0y+Js09bsZ6CD7caWlQ+F/1B5Ioi6
	 TwjBGaIYser2n0/MRzh47Ycmt0tE0wcUEu9T8OEX/OEeiLrAPuIIEUabFzylu/tj7T
	 pYJyC0EXhTGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB16C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870855360.26510.17798932855453342317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d635325d5319e85086a38d64048daaab438551644ea04e6c7a9d137ed556b811
Date: Tue, 04 Feb 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738708553
