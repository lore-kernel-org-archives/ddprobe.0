Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AEA33C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657027612;
	h=To:Subject:From:Message-Id:Date;
	bh=PMw7pCRidmZP5QVRvucwZRGqgeuy3MMdhoGgGYS3e8g=;
	b=gzHe1QSlPiaFrYOskJe77n8fkGKQylXbTfo1LtPaFl8Rr2hJD0LIJztJy93BMl78
	/dpJIxkJKV0aPE8sEuYkAIref7VdqwyWYsCBSeDAwsvzBkf5euj5X1DE8wPLQsrIxCO
	MoXC87uO5LGaQwPBEBHygBo2q5vpyQ5wORim8VSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657027612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PMw7pCRidmZP5QVRvucwZRGqgeuy3MMdhoGgGYS3e8g=;
	b=fKeMNgaHZdABGfRTt8RDLZM7LUJMrA/8ir0JrDqXt9VcARbbc27oWOG2nOB6jL0z
	anRu41o6xfgMb5IWfl1uQ1UbFXG4WOsQPO7yKEjtsPDaorSc4q0XAgQOqUbiDtr3yyc
	HuJGw5nIGXtPzq6Y6oNSSdLQKChwI/ggS6pWgQtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce8ace70-916b4685-2af2-4372-8c30-7b74e336b432-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c4732b3df8c3ba51cbb59deff093ec90472dceab3987bc0fb56d483cd9d985f
Date: Tue, 5 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657027612
