Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A8829A0
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650729358;
	h=To:Subject:From:Message-Id:Date;
	bh=gkt7EhErqbwX03KP+ju3Lxh3OXmPhYUIAvqo/taFax4=;
	b=IW/Ny2Pbx0g0l8NOq1XRx1dNVwm1h5He8lMT6yGKHHfifloaVDvxQeVQtuaXERrQ
	7yjn/nQO1Fwt8jD03oSAbx3qJKjFf0GRv7IbeUNBogB+pDQowvgwQPZUyBJdKb0NuE/
	SE1SQTfXb2EVqhl0ZfavLvO2Obudvdt+8S7ec2DI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650729358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gkt7EhErqbwX03KP+ju3Lxh3OXmPhYUIAvqo/taFax4=;
	b=X2rQfBZnAieLUUqmUD90DodpEanHKR64DaEjAV69rXBj9Db2LYLocIrrvlqTPmn5
	ar8BFgD9EeGV+imobFVhYJ2M+6037YoIiwIfoD2gr/9kq6oqxx+JdtR3UtZ5M++dpGK
	6ScG8f2FNhidnu1rISDXczrHY/FrxzTzgWliQ9UU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180572313f5-0b7fb5e8-82a6-448c-899f-6c698dd41761-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19205f20bfb317d2598c7d8fa0efc0540f6e1ca3c9db316794bafe0229340a34
Date: Sat, 23 Apr 2022 15:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650729358
