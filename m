Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845D348A8
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645960585;
	h=To:Subject:From:Message-Id:Date;
	bh=YTQV8xTLS/FVmKEmq06F3ij3UocRbAe7sCIobFQEp8s=;
	b=KhJOakDq5skpO+znvlYkEGPEdEv3yoU5L1K6B9jd8rOCOz5e1p2DZAL0642nlyRq
	CkUxcE4dgiYvpaB2Z7jKJ2NibnNIQgYv3rNr5Xqh4G0vE2wYd6a9TIfgkTX2YhR+F3+
	arDP3WWMWs4+W3YUy1UuGhGnpC79arpqDrsoOP8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645960585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTQV8xTLS/FVmKEmq06F3ij3UocRbAe7sCIobFQEp8s=;
	b=Gtp/spmed24czAQzPFB3eRUyNBjq+fbvYNXCO1CytCyLFRMhyIjteV3Liwp9Gazh
	hF1rSC4ue6ovb4yZHGjfqVnYn47lQBf3LiojWCXI769kVUaLgtqDUBWVXG82wgmt3U+
	r7HOUNi49ECnz7r93H54LdUGyJIAaE0uoh2++O5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ae55e55-ec94b98d-f854-4254-8951-ac3022047fa5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ebb212c2ce02eba0c355913c93a829ecc631cfd8e0c0478f2e590acbe700728
Date: Sun, 27 Feb 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645960584
