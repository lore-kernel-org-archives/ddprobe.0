Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AA23905E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791616834; cv=none; b=ql1xFRR+QOYTUyz4v35SEne67dZ/nfSE+eoaq6KVuvCPyL+Q6oUjslMjUDqPY1CeeL9kKA5sX/sUti/ewdE6T7qIOoslUCvbA0URx/dSt6UM9b+2LYfOF7Bl+Q3nc0c+AzPtbu+/6YbjZTWJmE5+Vb+vrpdkrYAX5EyxTPnZqPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791616834; c=relaxed/simple;
	bh=Ohzzv7FRhU1iaWyYCUvKr6bbNXpxq0NiULPJLNRYdCk=;
	h=To:Subject:From:Message-Id:Date; b=N/E/2MxUyNnaCXmCi1glRJMwcofEp3qrOFwehbxV4Roth5rxdXXyxqcvhnjmrYOFmnnqcHHomkgcXnExSoXbnyuNOA4teMOtIZe/PheAzy8fAOWiFDJ0ei1uUpiCBQZm30Fv5tq62lMjRgizOJdy6xT9w2pY/QOaeEWIvj3yFPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmpa5q+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmpa5q+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD62C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791616833;
	bh=Ohzzv7FRhU1iaWyYCUvKr6bbNXpxq0NiULPJLNRYdCk=;
	h=To:Subject:From:Date:From;
	b=qmpa5q+44oU8IsHdeug/sHJYhfSjQGznqfUoOq0zI4VzyYzD7n/P0rSFeAXk+c/70
	 ObPGxVdz4KWuDMpLx2zWLW5DH2VjkKVYf9UssUBIpe6tJw3jVuR+Iwg3alF3XBJhig
	 1m6/d3eVSr8zOiv/kJoEql61Sb667dXrnj7gxLLO9KhFabYkZz6oetSOtLRd72KeU6
	 eqwoiULJuMm23LRBWB87s/qf4LVxq4Uj8gp7vV7SdCgza8kzT48+11xeR+2PffS0Qs
	 yg1jQhIhFG/j7LNYFbOrrpfV2amrcXjjhj4V6e2hvpBG3zKzsgAOMNF37rFH/6z/w+
	 RTtOnbi29AdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96EBCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161683368.12242.4905469918466170445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457bddd492b018103397be1e65cad9eb88902065a165c991a4c5ee64df0691d3
Date: Sat, 10 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791616833
