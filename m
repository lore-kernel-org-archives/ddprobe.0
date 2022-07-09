Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0374E7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 20:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657397212;
	h=To:Subject:From:Message-Id:Date;
	bh=7yi+8MW3Q71qfxcfYjYNKDyEqlBlJZJxayCd4SN2+fs=;
	b=V0FZYzQai8g5WEoGKMO2W6zwVOnI36O1gRby5XUfM0FZrUo5ujXq3IVWqtIKtTpY
	lQE76sI+yCWxCFvYoActGpxnNbxJOVZE2Mb4dJEWruz7pjoBOCJ1PE7nv2MqQXBmxL3
	oAMMluXlwHAt59kvWcXf4KRYjqP4Ya49wnUko1cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657397212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7yi+8MW3Q71qfxcfYjYNKDyEqlBlJZJxayCd4SN2+fs=;
	b=G85HCwUd6KrTLOrP0BsAIqgSvV1gQF2Z7UcQWW0hjVcuQ+0E95drmZSojtu5RI1z
	Dyduc+qBJOpPZKsOUgkEBTc4kjWdyYy+m2ZyiIwABljFFQcRMxl44K16sq6CDRibw4q
	/MEkQr+mgD5vv1sM3dwX40IYl1sYAiUclZvOxrtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e49274d3-1eaf715a-9860-45d8-b5dc-a3f763269037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9d2c48e9dc59283a8b0b91d527a8d5596d31a55513f6fe23bc4847f2f508341
Date: Sat, 9 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657397212
