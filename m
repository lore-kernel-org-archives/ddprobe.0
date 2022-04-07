Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3994F20EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 03:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649303278;
	h=To:Subject:From:Message-Id:Date;
	bh=lC/eZA1bSLnZeJAJHfqddmYJ+c3BD3/WHe8mAed2eEk=;
	b=Z7AMWZY9jwkpMGltIaP2tlsJEZo9Yz9/v+qZ7Q18sMvHYLUmypyIUpi9e1CgKjMl
	JjhLg9CBbAbLM0fW0HFF7CZZT64xRjrW02h5jryUsNUoH6ZmWg5Fet/LQIq0uHTUOFO
	Tmy6IaEQ8SbDqD+gRjTsmdGL/5yTjRi5M2C49RFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649303278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lC/eZA1bSLnZeJAJHfqddmYJ+c3BD3/WHe8mAed2eEk=;
	b=HWO8KAwhuBxD5AeGEkAZvb3MfGZjHPdENkMQfoSQp8wUVfFr1nz9vK0RdrBiecoF
	EBfkfb973yq3nsW7R3J6c07pKuSPljyi5Mcq/GL5AZ9LhTz8mW8f5IRQUitat367XqP
	vkQ35bF4VzwdOLEqzInCnzA0O+kLSglJLkHG5qEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800222d2c2-97b35b8b-8b2c-4d19-b970-5fd3b452636b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 714bce3e7c898e0b06efab6a652d4aa31fcdd76a70d27922cac57986f2e9f9e3
Date: Thu, 7 Apr 2022 03:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649303278
