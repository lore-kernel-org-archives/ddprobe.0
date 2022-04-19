Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F4A7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 13:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650375718;
	h=To:Subject:From:Message-Id:Date;
	bh=Q5pvnp9r0meuYOoFXohCLClcYCKQKWNgCAbsegK1Im0=;
	b=YVy8wk3kfEC8M0n029oelJ8Dftq0KZUKw8mE2+pZTyopIYXe9nz2cQKJFFR+fC0K
	vSOhlCtoYfoxJSnQ6a6RGIJK5FeKZGUSkNKznZfvhphIu8ZvixsPIAFbQUAZR6ArCMq
	m+lAOhpPo+V3KwR8D76H/QnXXf7CsJDyySTUegKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650375718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q5pvnp9r0meuYOoFXohCLClcYCKQKWNgCAbsegK1Im0=;
	b=isIExbH8g8ELAVCcw7cP1rpONoKyFyLAhmELYR9LqfUdeG8nDgRE+V9xks5HejCz
	hiqoD4Oy1rlsGPN7x25Lh4sv4zoZM3rqRD4E48RW45GLuOujKDHhWJzpEzgclfMJAXp
	DPgV8jKdepAAtnlpI3zpgIDEJTuLUbymJrru1nvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180420ef6b9-cf3aa329-8e59-4aa6-89ce-75cb4441f699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce63272b9facc3f63f64a86bae3e16030eb15531778cd897e54c32881872f610
Date: Tue, 19 Apr 2022 13:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650375718
