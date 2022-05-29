Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5130D17D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 12:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653826799;
	h=To:Subject:From:Message-Id:Date;
	bh=jXOuiweFAe8mUwbQrWWYyKKTP6iMNrm8pben6BIwDM4=;
	b=JlErRSeOHUz5xl3d38W7U5a98mg5bKND5ma+jTqOs+VUSMdbd2bRAarNR9GLSTal
	hmuNNRpXBhSmHOCJPr9nFGbW3G8t0GJchRCtCH89wVHw7zb6j/+Eq8WOuQ06MVj9Ljy
	Cy2wPdHY9K7kFfynkZYqZFjebBHPpghgO7CuGI0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653826799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jXOuiweFAe8mUwbQrWWYyKKTP6iMNrm8pben6BIwDM4=;
	b=SVFu6D+CHw4GH+wkTMSq1thvKUFHzxmISgk3eA17Y8Z8u/n/jgvq/NzpSlbUv0vF
	dmlpnc6jCi9Tx+bQlgM1dTqoK5qCQp3b5n9KC8hZkEFU0O9eiyzLbKtfZs0fTR1/e6A
	PjIwZCq6RzoFeghTCUvreUy627PZmjIY7Un10kFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810fc24727-bd6b2b02-7a9d-408b-8620-45e4f01dc6dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29bf4b53291e8f51bd688f8d8c036cc09aae32823d19f4fcd9381bf5d0c50632
Date: Sun, 29 May 2022 12:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653826799
