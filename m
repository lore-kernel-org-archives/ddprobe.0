Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EEE1FD1
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649786038;
	h=To:Subject:From:Message-Id:Date;
	bh=s7lgWvDeTpQkbTPjec8dt1ESsgY8bXKNWYocLJNfHAw=;
	b=ROEFAE3w4XR+kItpoYNjnmLhXXf2PgApJaTAS9ovtrwOISNTBCY0ViyUyocZlAKT
	eRCoUKSMKTPF9mAjqdBMI+WxGWg3BhqvQyRXvH4nLx95EZwiRPDrqGyhi02CxCZuww6
	XDFtkUOMm4qnP+s9i1VgiYgu1/DZ17xxj7Mankz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649786038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s7lgWvDeTpQkbTPjec8dt1ESsgY8bXKNWYocLJNfHAw=;
	b=Hd63cE75AomoBgruUKyKt/UljevJx2fzLrz9Vkr+dFd5g2vc2X2tQhZEhVVOvFEU
	J0gB09QlvxVs+sl6/e5/+lZNqsVC7oIsalUElpu4AGbluKmmDTrOGJE7RCLaVMq9pNO
	Znv3K7evWfGjEvjfqpFUYAwSVBYVNRslSZyW4TEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801ee927fc-23ff0483-472b-4021-b346-9dd7c813f8b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 672a6aeb6554a367d139785dee4b7dc0c6cc0e1e6b0e040363f68011e2a5bea4
Date: Tue, 12 Apr 2022 17:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649786038
