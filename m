Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273C817DD
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656968212;
	h=To:Subject:From:Message-Id:Date;
	bh=1SIn3iqSFVh7hmlAQXswyuK/Zk9UwmjeXo3g+vQyVk8=;
	b=d5sgzObOK8gIojyqtQ0qym6aa4WEM2scBk7lp5ieag+CGGC09zNkQXz88uJAyy+z
	deK+bXW39japYGnlhIyqX5k8u/a9GV0j4y6MvtwaxKx1onsjMfPLpW3h08YSaxt1DO7
	z5aYOvLzeQhzCs+7MuQ0oPZJcquoxsrSo8YQANro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656968212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SIn3iqSFVh7hmlAQXswyuK/Zk9UwmjeXo3g+vQyVk8=;
	b=gwIh0PlrCm1KuSFeZVbY/Egycp/ka2+3bSgUb9ER6M1/sgtmaYgR7iAQPlx7SPej
	OTCJ5PqTke+00uD7nr8N3Z1+Aes17zMW9LioeRuu2J+z7dJiwX/sIfZ6RneMIJAbj5Q
	yrf+/NFELBV5bbT7w67hamrh5F+a6uekpBgLxGKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb006f37-eb3671c5-1251-40ab-8e78-e606bc7c321c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6bf5871bb52424586df3911b976261d35f0f0d33d56d73359690300075d805a
Date: Mon, 4 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656968212
