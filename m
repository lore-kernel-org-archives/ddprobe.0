Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B342F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647481584;
	h=To:Subject:From:Message-Id:Date;
	bh=XNfZe6u1tpWnpCDNEOyCXbQLvOt6f+roopcITCOzOI8=;
	b=AxeWhfrqf6xL+f++zdZgqTsuMM3vmGopc7tNtk4Dx8MsJ461s3EJoIfxdsOYkCop
	eij3qhAicLreewWoSogWdX47sABWUSDKW1qP+VoH1BiHi+cOQu39ha09QZVo1yN0P8N
	uLjMWVWvYEOgexEC5AYARsiA41OXQ+JQ76R+isGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647481584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNfZe6u1tpWnpCDNEOyCXbQLvOt6f+roopcITCOzOI8=;
	b=ap3cO3gSNTo651gyz67GkQoOtR2ippX+o1S6MLvyWV9SMtJX6fByUH3PlDn4ZNqz
	2w8T1TICp/h7pzpr9JDLVmCjTJEjJLMzo266Q7oAuG/QIHpjV05B8DAnqdMdPbpJgUS
	v3igLHLr0hyJvnkEarJzCaAh9jzbA6rtPs6kI5iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f958dfc92-f1fd89e2-1a75-4bdb-8769-4206b4fac594-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e2b66890d95515e1a532657ebf01877a7c3f6a8de1f66f4437f92d566bf0981
Date: Thu, 17 Mar 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647481584
