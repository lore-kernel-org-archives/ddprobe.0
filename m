Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3037517C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 10:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650708778;
	h=To:Subject:From:Message-Id:Date;
	bh=4O9tGJAfeJDT+xVALk6BsuZZurjT5DR2ae//4IlPqSY=;
	b=i6I4oV88kuT45uqS/WGoGHG2NQkOsGodUOXJSp+VYPsMRHX1Z1g73nsdkK7RSMc7
	Zi3Ch9MfDFD6SNtbCFHRqSCl1YN0G6ZcStTGcJEQAtcJ1a4MHXMgCXq0pdFWMKtvM/A
	l1NlRcp6Sh6DjaACvt2DI/H+o0MAZUQsE7BEG73Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650708778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4O9tGJAfeJDT+xVALk6BsuZZurjT5DR2ae//4IlPqSY=;
	b=Uw7VPRKZT0nai5ydrVw7LfO07G6JHY3OqIiSFzOogjSmGWLZmZfWs2ycR8WdHXgt
	vgsBHKLq5Le/5PPQkV3FhN1Um2amyHO2fmuyAyVQUreI00vi/YzQFlPdjScUNhFimBI
	s8xTXHcndwSrCaQZ7X2PZ2X2FRiNq7LBwEKIpk9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055e90d35-0ae29ce1-adb9-40c4-a397-fc45071ecfdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2042ae2d31e55c3f0695e660a24acc2be8d4ba3cd3530bb7b826e06b65f5eb1
Date: Sat, 23 Apr 2022 10:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650708778
