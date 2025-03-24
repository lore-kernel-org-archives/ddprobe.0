Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3053F17C98
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742786395; cv=none; b=cU5VYciuy021VYcWWfKA/V+N9bfn7Zu+l3DrDHxEU/d4Tk9gvwBIcStMD7hF5ojUYOvc1U7ZgMOHTuRk9voM+aMh2ZfBZ5mukO6N9gUtDJEAipNimYXfHLOcoztMmqMjf0PmCZN/hqirDlEkFVVzO5gs7iaaWEUJoj8foTaqL5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742786395; c=relaxed/simple;
	bh=UPb2KKE81nSqkjZHTkOl7DW72xYap0JcT6dh/fa/nXY=;
	h=To:Subject:From:Message-Id:Date; b=Fd/+Wr0y4DnZPg2QB1u/4n9g9W+ohEeNmMatYJF5jbRtZGO/KAvXtI32WvDelJUVh/lhmwdb/0kBnSCyE9hn4fuy+5ydBT9p4VkYoM56N6uIywKJY/DvOhZeQRdasH3NQO6p7ejaeEIFdctEvzQdGDOy6xFZTWYiIkUxNzh0RKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxfEuDxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxfEuDxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5FFC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742786393;
	bh=UPb2KKE81nSqkjZHTkOl7DW72xYap0JcT6dh/fa/nXY=;
	h=To:Subject:From:Date:From;
	b=gxfEuDxuAuY1OupW/oxh6LjC16Z7DC2q8eswLx0lhofGoEf7TUyXn4WjeBujiul8T
	 AV1NN34pcLPl8J7ok//RqBfcCpddyPpDVqnPmfnEa/n2TadltdPNITWWve/yS5c6m4
	 C/F7bkhk4f0A4LYpYPOb7VnpzQ1PzehJ6c0xSqDkZ6SD4bnPwsDA1cmHLZ9LjSvIku
	 zb/PEeXCEv1Vu5IpMJMnezgHUeKGMiZTWYhJ/ZK5MaWPPTNFonbRgvDKfzfFtn/48Z
	 IaCJbW9GJYjPfJT4/lreZO6PROdu133a/1NRKimXpf7P5H19GucH3CBjssTSVraWRR
	 DVAbyGh7E0CHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91116C28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278639358.8667.8655487372165709444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e97b657e377940d263e895a5653ca2b834795469b08bc9315cd341a8b068cb
Date: Mon, 24 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742786393
