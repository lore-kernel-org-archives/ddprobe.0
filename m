Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAF723A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 01:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650590098;
	h=To:Subject:From:Message-Id:Date;
	bh=CoHw97Qgv5jQPH0TtR39cP+qNtCEzsfu2WjS0E67nX8=;
	b=NofMi0GXCP/ITFYTjb67bbPZU0bSmU/G+8LQTqVFfYjXG7GaGK6EMQ4T5xASX+Jn
	5vq/mDGuuXNK0ymbkvkelj/W5+xYacCs2wNScUW0b/fiV0l144aNpouGT+O1kGYPZfH
	xRq0LXS8NbJLBJCClkxWLvxKTP1aZThsMQVUBd/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650590098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CoHw97Qgv5jQPH0TtR39cP+qNtCEzsfu2WjS0E67nX8=;
	b=Ls9tFoIClrW+nfuJex6OSth0yEQ2VHmWkJhJIOLdU8LCy1msp1PIeMCTjmpOP/gH
	cxZFXEvydmc6y9tsZIcBWufrlNCe4AefhuJc/znyWEAjq3HcUtm0MGIqvMOu5QZaidz
	qiztMy0/4H77XqYtLu09oOAmA1/hxiWG23gVZRug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ed62342-1014d190-f2ba-4cef-8e03-cb24eb2c8f6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8086636357008219835d262265c73472c24400fdfe4d75d961582d0e4d643224
Date: Fri, 22 Apr 2022 01:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650590098
