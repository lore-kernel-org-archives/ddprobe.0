Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A4310F6
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659796252;
	h=To:Subject:From:Message-Id:Date;
	bh=XS3q+Vx4TVzLYtQLJGQ3FevI77MHIZ2MrWr46OIr+8c=;
	b=DZkkpzdeagMNK+yx+mpZEdyBVuKUwuxAWkaPRpvh8APrF/oozbS5AVXsH9LoX1Vi
	b50rfBQ4+40oLsVWIMsfnwcVpU+06hqhA3avPVU8wjxvaTRB4LLUF/ga33kKT+BkK7m
	etoDjvj1IIDQn/3Rzdn6XWHV1oteEijuXCPxlEgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659796252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XS3q+Vx4TVzLYtQLJGQ3FevI77MHIZ2MrWr46OIr+8c=;
	b=O8xD+43PLJSNKOwDpHwElvTXgGCFYUnUXbQko+KJAj10V3CohmT6iVqPq+KQCH6e
	ZnUc9g/h5F5y1AXxQTk5L2rg8ez0/mAOXGKyLxQg/hIY3iPBMOixqS53Z4QswJtHymQ
	nbG45evGgSYM8JYEzdfNISPioXWFZ8sx4yDv5Rzc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827390e7aa-d29f5a3f-b25a-4033-8f8d-b7c01de6bbe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c54e2bdd4f0861899730c68125d39ad563f3c303f002c74efadfd57cb8aeae7
Date: Sat, 6 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659796252
