Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182867C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656998812;
	h=To:Subject:From:Message-Id:Date;
	bh=G4GpxetQRQh7JRv6RWd/qSscqZiWGUdKjCxvZ/5o0sU=;
	b=P5oSkwqcoDlhtOK+g6bI3IgdlraKDEfajDlLaqxFph+qUVYtAUKRKUv6Kl70vPkj
	0zP8eCxx7dAvZgSXKlXE03b1gfdLMeFoQou7H0pVpbPoWHfWzcOTIFnUn/rE6uXALVn
	ze2HUuOFOFf9rbf/kT4Qxo67onE/SZxM52ybQMNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656998812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G4GpxetQRQh7JRv6RWd/qSscqZiWGUdKjCxvZ/5o0sU=;
	b=Mqs6Ov65qJ/9cRrQTGUqYuZzdoaKBpP7ZUowmtkXWCF2sseKo5MoLBhr8tsxeIfc
	1zQx/znAZcIymiRrTy53PVQy34LTZf7TBGbQDbqep6AYlZkc43wx69snj1vtxWA4SS0
	yBuyyODs1dUtb+2jeHjNqIsuHScHRUsbXZGDJfQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ccd35a60-9df3f7e7-88be-4b5f-9344-4449de9c0306-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b127467dbbbfd168cf32a597a6caf8fb0e5056c42cfb97ed64e1f38a1d8e09ea
Date: Tue, 5 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656998812
