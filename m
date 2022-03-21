Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D0963E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647880584;
	h=To:Subject:From:Message-Id:Date;
	bh=NnmCKuGb/RJaLVpy8W8FKahJw2hXQLl7I5XGHrHfSDI=;
	b=NT2IRd3a46BOxCfi7Dk5EZ3lSXf44y5h73aB9OS9iDmlCMsrfFJg/wm5XWqIhasy
	QJS5i8XIPuvyGK3Edw9e7oyN9UAlSK4MzPsyV2jZQybLCzvBNQo3DIz4rNw8OWSU+fI
	NNF/C/+1Cl5b/5RYtYYndTJqSFiDDNXhYXbpGw6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647880584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NnmCKuGb/RJaLVpy8W8FKahJw2hXQLl7I5XGHrHfSDI=;
	b=aCIpv78xG9c33sQf+7E/t/i19xqt45iut2DpZI8ohDysuDOwQJ+H4yM05RXs4IHc
	ZEYvHnaSuraQYAW0cVHU0VhUXDprIdx/ULnD5SQC+im8tqxmCt/NOYrStDxWWMj9Sy4
	7ChNwXGyw9sUDVywG1rDC1zOfLExx1+6xbVg9x9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad563e53-4eeb706f-c27c-4c0a-9eab-6e2cc75cf6ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cf8df8d38cc7591043237d782c99123f5142c7a2f62277a15e2d9a3f76eb8ab
Date: Mon, 21 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647880584
