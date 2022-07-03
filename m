Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED971FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656832012;
	h=To:Subject:From:Message-Id:Date;
	bh=z8l0yTKlnFfyE9GRAvCW6dXOwbnt6ZzHR3/JRbMWZtM=;
	b=JtX3N7gH4lRyJaO/QAQ0w21eOPdZn0AkBHwxVD98toe1FG8KqiuvywxGGAf02vSe
	D8qlZbFPqZ5Wbc5+t6QMlQ7Xwv3DBgLJlGa85G8FXZqNPRcjnq9BjA1uMZjpTad9D3y
	CInyBDphjsjg3HZI38TiWXKLjhnCzewa8vb9MdJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656832012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z8l0yTKlnFfyE9GRAvCW6dXOwbnt6ZzHR3/JRbMWZtM=;
	b=ZB4JIHrCbI/4Fc96eG84sK0jbNwWaYDaxvhrrNbCapmnJScxtF62UyrtbG//J5iH
	GxEJEGEnbm2fOI4wZefWwe9sR3l0aHPKk07Q6eisXIMEEV1rZA9hQyf5QMGJ/8zjdCg
	g7cfP+xx3NgnG5J+XoDLsrSWOczawy3DVcWh1onE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2e23051-d2a2e808-4c93-4c47-b276-80dc83dd21da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d84becdea6c43cfc49bf78570e24ec7baba3e74ab93dc4f25bb5fcbd37a222ce
Date: Sun, 3 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656832012
