Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95315A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660017052;
	h=To:Subject:From:Message-Id:Date;
	bh=RMdeUjrbtMpZBsil3frMjRGseJRXdEv9UBRbuV+84dw=;
	b=SbKjMP2wX3LwyyMR5SuqzZ7oZ7TXe03drGPrlcC1/cvGb77GQIWNY5qeqbtC8jKw
	F2RRizPae5XxQ6gSbSsCRYzQmfTaXyaZD82gn6vR2ZwhIVp4vSQ65WfRLyy0b+Nfyxv
	exJBbpq7eHmVXgwZTr3aag41qekMchQtLn/+AOz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660017052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMdeUjrbtMpZBsil3frMjRGseJRXdEv9UBRbuV+84dw=;
	b=UQNqRFwGLStRHPxhB+hUPL05TRItU+pWhtRhpDCF9WYV7N0rRKie3Bpx84kb7IVY
	Cdn/R4Hxd/nzsb4Kmok4tguBZn0cGWdGQMcnZ4uzXDiU+gzqmR41cQiwgMJ0/IywEHh
	LS9SgOKpjkcKdR5+UKp2N7bjr+P7UUgc8sKRD7t4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280ba0b84-075b4996-6b0b-499f-af76-387733ca4f9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d060d3fe7187b64f585ae536b27f91d04df316f2b7691ea9690ac060c06bd0f
Date: Tue, 9 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660017052
