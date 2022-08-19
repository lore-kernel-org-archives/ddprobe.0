Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5683C2C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660915852;
	h=To:Subject:From:Message-Id:Date;
	bh=vfbLLTTa/eixtxbOIV0TC7vio2eXJu855jXdwhetgDs=;
	b=isCifzVTqKEeelxlhgYrdODpYzvEQ0V4A7WIAcI6S3QQz1G2e0HEhiZoZqU+NVXz
	4MSIWn4895+Yh2nDV2EKyeSCcI5jIXv+aywMez+1tP6o3YIY+2/qA49A1pii00WPjSH
	W8K3zBDrrkflMNz6/IfmI/bI9dnT560kOKQL6NM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660915852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vfbLLTTa/eixtxbOIV0TC7vio2eXJu855jXdwhetgDs=;
	b=fbHAukH3KGpzmY48uwu9z1zVJ1m2aXH+y/7IazoY18pFWaZLTIoVUqLhqRm3aFDl
	IgDOlNfxNNj8E9n4AWeJN0M6zNhMN+Q3IUVKSqP0+MkwE9G7A2sY2bvMk5FODWq2KbI
	t7XpbgT++6rH4Da2DzLv2DARhGo9KkqzdHfUoxBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b64ca53a-ae4ae203-e356-4f9f-bff7-69d34ba0a06b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4b054abbcf8dcdeef29328d1050bc7d47c4896ae309bb7615930e5c12a0273d
Date: Fri, 19 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660915852
