Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD157469
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656628612;
	h=To:Subject:From:Message-Id:Date;
	bh=4zn+LMAp9ss8EP2eNrJX9fgmwvHgm5ecFDxOeRmOreU=;
	b=f9176q1UxW5O4gIlZUbsKrasMo7A50+lCn9+h+4VvSSA0q1v+fQxb22T09NGAzJy
	9cXKR/oQTAjTlG3QDqhTqlRiyQF6tkS5BJ3VvaHBqE4/0/6VOJyRjBePbCQ3VR7WCQ7
	TKoFPW21Aymx60Ns7AncwwTojnD0ghk0VkIYffqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656628612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4zn+LMAp9ss8EP2eNrJX9fgmwvHgm5ecFDxOeRmOreU=;
	b=PsZThJrI9BLOHmjY3jVau0irg5HCCR7cSZ6BVvIHkrhayKV12Uvl92Bf6GJXXrfn
	eWvg1RHHEZihGkXm72cL2iV3E3TyRcIvP2awCPPU+cvp1X3f5VZ7DuSJpeWAC/0LihU
	jdUwpF16ya2jDsqDB2oVbbCUevP7jM9m3s2ygnsw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6c28cca-1c09e23a-30a1-45a6-bbf5-0bdb7af67418-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce876a0973f524f65c36d16dfecd75f2deb9b667e85a1cd129e66896ea3ab0d1
Date: Thu, 30 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656628612
