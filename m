Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633F03228
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647556584;
	h=To:Subject:From:Message-Id:Date;
	bh=YigXnc+XeSbgmjwRWRAzlJ8G3JyzHnz7aNKb0Ze2z9g=;
	b=lCk/E4TF21/9cdI5BdWAnCR+33RzLE8gXuq5FqU2uFiuJCUN35Jn6bZ0fRcMYzgd
	/y49z3xk+aEl4sTOS0F3lGoV7h83CTFjyVkcpRGGRQP/7oI0HdcXdq5rX0hw3cBJbJM
	ggicRaXhVSnbkiVNb6iOWUu1ELdHZJGrHLEr66D8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647556584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YigXnc+XeSbgmjwRWRAzlJ8G3JyzHnz7aNKb0Ze2z9g=;
	b=RGu6XuOZ189+3+2IP4849nw4lCtwYLTyrTsYpn1DdgxxX/o7sWOch1fwtRmeSZeD
	BYSmvaCSTmI8BoeHjqS+h01grSsLpyXmHJXLPL5/loXNwTdRIPBjAaRDSjNCklnRTup
	qcyqLpqJVYq/yp/2njc/QrlrZARS7vtVWCApJrPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a066561-c0e5b4ea-2d8b-4da9-b3a6-43597e94cbf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c89feec64079463a6c7bea331f407d004756dff6fa4d8832ae77b1da01e0e9c
Date: Thu, 17 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647556584
