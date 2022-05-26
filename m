Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DBE29AA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 23:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653607979;
	h=To:Subject:From:Message-Id:Date;
	bh=Gcnbvj79UCaT2xYhqa9O5IDgshM9uIsOjGvhCD7Na/Y=;
	b=CRUkpqzPbcPNB1ACK2kmGLIxXCUYqv9cRJdLQDMQ/9Tzu0INEm8AZQ8OsnmjOedH
	ZZq+8uLbezw7qfdiR0O/gu0CI7WVb9RnBZkWwVc2D1zxAR8l9piidDY131c5SBpJjlJ
	Ef9DhzFDBXyRqooodprIHVyXATXXpMB2qZ0Jn4F4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653607979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gcnbvj79UCaT2xYhqa9O5IDgshM9uIsOjGvhCD7Na/Y=;
	b=kDJ0XNP/e0MpCD5wk12B/fMDdFseH34Od6B1ItajWaqmk+yWQDkrQTjNdu58X5ac
	DRpnodbKy0PdLNN2TsFmX8p8DmhR7v/L6kV0kdeLSKMiCvDEWfevqmFAIe9qcaxQ6K2
	2GiVk5dCj9PZf7m2X1SeCasr8W4IsX4RBkYhtqUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102b75932-0748cf9f-a2b4-4f7f-851a-a5913e372f95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e5bb60e9285dc7f1859fd973f5babebf49753a416e6a6eea817da123de312f7
Date: Thu, 26 May 2022 23:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653607979
