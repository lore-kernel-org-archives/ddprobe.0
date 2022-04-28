Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22525138F
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 21:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651179718;
	h=To:Subject:From:Message-Id:Date;
	bh=KPcX5vswAgrjvsZ55Gq5F8ZlZjZ6Px3tDJ2yVJaKOxk=;
	b=Hy2oVYJ4gpIYBMZ5vZ76OD4JcPJc4Wa/hcjj0q0wSCJtz6gYY7svmVqCCQOxPiQC
	8nxjSDf/B0+QQ79WaxSJrHv3ypmsBxQMRwE8ADzsNh+pdesdjhj/THM3f50O0If0ivV
	62+qWwBNekhr5IqNwT3TzY3kx48CVA95vlue+Xd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651179718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KPcX5vswAgrjvsZ55Gq5F8ZlZjZ6Px3tDJ2yVJaKOxk=;
	b=GZxqkuFPHbtIwvNylrS+03vmqg96l0NnH7rkpQXKIYEiem7BwOBiCAIotTJB5TlV
	vJ9IWbGQn1FF6CvaMkD1Q9u4Y6KBpAEkrIl/6FAIEqx06d4FtPlCERFt+zVl2Zsm2GF
	IZQjO+8flJN97o3Syv+DWcO8bfnG074lakSy+H50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018071fb064e-33deaff3-6e25-4c93-9045-8aa71cc891bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaf3d67406ab6c9ef62c7027a1a3cb4b60709be1709f9e82bd37f88496ea4c34
Date: Thu, 28 Apr 2022 21:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651179718
