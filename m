Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02212A54
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647948385;
	h=To:Subject:From:Message-Id:Date;
	bh=dXVSXbm9FdOasDfi1ceE/0iFKez8cQ2nm4wYZqBUREw=;
	b=geTsR+7vcHXh2hMdjfK8E2FkeIOBlMVN7SlQkwedP/9PQwPyml3Fmb+wBa4A+QEs
	a+mIewQC/oJdAHe1kFwAVuV7I1Q8UKt3ENWNX6eiFk4L479wQij8I/dfLlFlSJBlw97
	KCu3jMPAGV/IKLsnYckOdxrWVFE5UmClXhQV2QZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647948385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXVSXbm9FdOasDfi1ceE/0iFKez8cQ2nm4wYZqBUREw=;
	b=T4w686fz1TmClG4P/c5Jq8OHiI/v7OXRGmfNmUbSiUVVMj7vzX3MgUg8HyJOLdLR
	sw7K1X0ZzwJfCjkxc1WnJaFFaig94GPIrxCn2a0q1tMexLDbaU7Zrzyh5NIYsALKRMD
	1RjxCa00aZCegKQ4+44awF9Q0bY67kqgXqI6New8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb160c9e3-8f093167-f0fe-4c2c-84bc-e03ed967ad96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98866feeb52ce89fa1265f7ac1e0e52f6be1e5156d8187b05ca6195da5bebda0
Date: Tue, 22 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647948384
