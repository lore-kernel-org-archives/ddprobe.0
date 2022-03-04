Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720A77A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646401284;
	h=To:Subject:From:Message-Id:Date;
	bh=IuaJ6ztkXvxrhuYMDpYRo7fxynKK/HI+prFL92Wmi0c=;
	b=EjvsQwxIw1bJvsdZXYR5uZOo/lpMtqzgq4PgfmREupY9965778PIJWU/TsCkV8HW
	QOm2CBih6xqw1LP7u/OOHKLL56F2/6MZ6PvsV0sO1BoJqObCUBcCum4uPLQ8icsS8/X
	EE2achLTcOSa/dmJavwkU8x6Ut8C2U6TauSmDZkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646401284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IuaJ6ztkXvxrhuYMDpYRo7fxynKK/HI+prFL92Wmi0c=;
	b=ZieQUEd1KH5fbfFXHLjzuyGyXHuRCBhtdOtMJsX/GHHQ+KrsdjK454aFfzrfprja
	D1jWlUzJo50kia3PcmO/pIeG8Ebu3I+luDeJeVb1OolxzxryPFOUNNYLAzUM8C0egWk
	K54SjfZyThMPwwONIePe+4MdZjIyZFp9rUXr3mrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5529ea99-d2772073-59dd-40c8-ad40-367468fdfdf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33a32202454eb885f6533a7438e4673351243a38f9e6343a2fc735d21676d754
Date: Fri, 4 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646401284
