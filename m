Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B391844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647319284;
	h=To:Subject:From:Message-Id:Date;
	bh=bfDE3xZMYn81VDFPLDae/ec+Xnr4qzCUHCn5/u9dJ/E=;
	b=GD1k6xiKWZtHtOSbM+dwYX+zb4aawfTbv2F+CnNDwdve2dnmO/qGfXASwtW+WAJc
	44BkQ7w1AcnAOy0DqxxP/ir2vYqPUiMe9iOPdGHzVnM3awOACRlGlZUkXp134nCk392
	6Y9KZdWqEj7zzpvR2e+jIVpDYuCHjNLxt7XIuAT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647319284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bfDE3xZMYn81VDFPLDae/ec+Xnr4qzCUHCn5/u9dJ/E=;
	b=iGfdSNnS6MQjpBMMVgK/sum8hvWbH6Mv+A8HkYRD9rvfhPdND6NlZeikxNYT2QGd
	NXI5Wf9mN2aO87GGXy0aOLjgh6dUU7cd0t+34u34qOb0YzEr2SZ0BKWpAdtY09qfVN/
	IZu+7g4udL/mEo9GRb4+RKmP/fQDUtDSwGXgNEAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8be17c2b-dfecd01f-2de4-4881-bc3e-43e351a9297e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b64c69b5870870ce840208a9528347a863955bc8b0c59f012eb4aa29c432aeb1
Date: Tue, 15 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647319284
