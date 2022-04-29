Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4175A10E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651209478;
	h=To:Subject:From:Message-Id:Date;
	bh=RenMOMqqNCEmvENvGdr4NcV8QxyBvLva4Tb0DkixAJg=;
	b=A+VSzgz0Yq5oUh9Z39spJRl8zQOg84EolSdzORt0AahMnyr5jrEzQE9Nwm4doigB
	o5EFE9U2Pb7Q6fihB+gjHKrf0l2/MCJYZ/ypQYX9hNB2seC2F6CZhMpunrL8mS9c0ED
	CAIlAFGQzS+w3ck/G8XFKakW7zUqdSMG6HhetVjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651209478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RenMOMqqNCEmvENvGdr4NcV8QxyBvLva4Tb0DkixAJg=;
	b=R56zbsVtMaezc7CLKXgwyvZL1lggwPbiVdvKyYaejDhqCcjYKazI7ImwA1sK6cWS
	7KIuONLi6Z5D2MVxbUddPf33bHcqZcmz77Bjlot+khPPbmjgKXrR73MbCr+e/8UGrAK
	uvCFRXseykLc7/6SonGhlfGvf99imO4bVkE/M4mQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073c120cd-bdeaa36b-6c7d-4ca6-be0e-b8611f394565-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2a8ee117113762de6bd840aaf927a57a873c59e003068d2054f2f2e452379a7
Date: Fri, 29 Apr 2022 05:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651209478
