Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFAA1FBB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 02:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651371598;
	h=To:Subject:From:Message-Id:Date;
	bh=HpEc1PqZHSiwc/eEGXBV/xOA9hMUl95HavG5iZVVASQ=;
	b=JcxRROFPC/rwrgfz5P3Sd2eRnVAGOrnd7ZECx07qbDQjEYXanVzuGVKZdvxg5g2c
	8/QtyBUg2DEnKcWTLC5rA5RHg6MU+wy8uef1EGponkimqpdOyHY2G5B132NGabGq2+Y
	EfGBwI4n1mq6oPzumCSX/gVDXbIsV1XvMlNGGO5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651371598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HpEc1PqZHSiwc/eEGXBV/xOA9hMUl95HavG5iZVVASQ=;
	b=cD1aguNB/2l+EQ1jqkZaIkgSa4n3w9g3+NuLMQTLf53nWZfsQkWPidLN4FHu4Cba
	xefgPZJyfRNta6en1JrKymEv/0hzKZj+hsO+U1naanJn++1nvRKdA2NiPjVyc45Cm1o
	IKEFIEQHgC7AMYZmdFFNP4O9akV/hEqspChLz/y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d6ae1f6-963570b3-451a-4971-8a6a-6caef6619769-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbb18d797d0e3e291c36f9abb04840615c82fbda6e5f8f8ffd0181977d4fda8d
Date: Sun, 1 May 2022 02:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651371598
