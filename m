Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA661FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646564185;
	h=To:Subject:From:Message-Id:Date;
	bh=jlLYNtMLlqQYAqUIG2761FN0xwPHO0Ttec1wRdjNZiE=;
	b=alE+zKmFacpcu89p8eOXG7OoMQ1z8ICeqFJDRSUJl63ACudrY6n3C6GcvEwboakw
	TauqEbcEDPxr8SFFHMdBBLIsdIGwWBiire5Y+hdAcACAcT5m49LHzcoSJcGFjrzw1rX
	wUHGB2a3T8Zv90kUfg3HL+rOnI0ffnVTrngMW+Mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646564185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jlLYNtMLlqQYAqUIG2761FN0xwPHO0Ttec1wRdjNZiE=;
	b=Xk7J+veJHq1t6mD4LOKT0mKa0o+6LpL02A0RaP7UbrYBVqTN8iMcqEtPuhoRm5hI
	v0ROEDgkW5ehodzVZEF03noRjjTejwWx+Up0ff9X4QgldcznYAWjbdj/ntvpanSQTL/
	yyZvHbyoRGt5eDmRJ3EeWnJCWHawubSIEjoqXDPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5edf92e1-0577e4c5-7813-4fef-a544-fd567ddc9e88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8559c06ba7202ab299398ae3f9beb608db543d1a2e27aa5579882124bb865447
Date: Sun, 6 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646564184
