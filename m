Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8395137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647639384;
	h=To:Subject:From:Message-Id:Date;
	bh=ga3JY3eWcX0MfyfRmgz5IDolJKDRGsPfH3YGRt33riI=;
	b=IlaamXPx9m03394j73uKMghs7GOlrc421DM41gQXCI9RSdk+Om9UnGvjgPbdh0Yz
	KwLEUniBUuShTIL0F8NS44e3ouvicisLf0TO9Y+ehQ7ih75E5O37OEBaDTHohpQ/NvC
	1YW41vmutq2Nr/HAK15HNVkfjuZmycNGAZalVpAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647639384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ga3JY3eWcX0MfyfRmgz5IDolJKDRGsPfH3YGRt33riI=;
	b=PIjp7bWYICnlOZjoaoEqSX+16emHeo5/llpHw/eQDHtTrA6Y/QCFzUozXPYdvW+Z
	owe/9+iHe4dZhxU9Hwpij/dBybuaSQZoRaD/3dXjYMxcxrQIzPswSuqkNs+9/GeOeuy
	RzUAAvftfJCQKNIfdgIVts9P6chlU++Nx2yJbJvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ef5d2ad-72b5d82d-87e0-41bf-aabd-c2e237da2071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d807d92ba6a87abc0e21a80cf7ce39e3fec0a5405d21ca975430671c73bb1773
Date: Fri, 18 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647639384
