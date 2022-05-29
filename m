Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A9015D0
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 16:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653842699;
	h=To:Subject:From:Message-Id:Date;
	bh=X5l8J/xVnBQJmsZ3XlSFustmuEtDOn4pq2wA6f2vcyg=;
	b=j7LN19Mzj0hS2HfnX3PgG2T/mXUl9RFyJcp+lXRW+mfXvCNL96/xs6HjGMeLY8DB
	WU1l4ZtdtG8xWzDS+Na6rzVy+s3T5WjA5t4HVS7vL+bVDC7zGqTomIPKqvYDhhxLWb8
	JOPduyPeRT8/lKwsgb3k8CHI/P4CeIguwhXBycls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653842699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5l8J/xVnBQJmsZ3XlSFustmuEtDOn4pq2wA6f2vcyg=;
	b=fWDdJkfrssqnjno2+2MfoPnFho8uqza3+s3MmG6AmFeI2O+KFhrMqA4BBDyuSSvJ
	bSrum9i1OoWqdPOUJ5fcfbyooDBdNWDkWYgRXvu08L1obDAB4LtWugtDz7TMWsSUrGE
	4BSQzrCxzKCoMCk0yx22lKmDaIK2sugJbzRZnOJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110b4e43e-f7777330-5457-4996-998f-712065721815-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60a806896622fab9c96c0130b4abe46922685ec90373a77883894500199a5314
Date: Sun, 29 May 2022 16:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653842699
