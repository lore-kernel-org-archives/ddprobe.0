Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063EE7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 00:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650760618;
	h=To:Subject:From:Message-Id:Date;
	bh=abSVuITei8PIEGSWNM7NwIqFhmyiInKd+zlD9/v1n/Y=;
	b=F2i3r0qig+8fW8NDSOvSREiGYAICjlW3Gw2eC22rZzmFNieLoWMBjL34CXtA9vaf
	0VxjqiAX91CuNZjrKSi16az3gZMkfEUx+35u0kTGUXjcT0321k5Nrm3VeNr5sdXZCyM
	H1WuBky1CxG7xDTT3iHXV4mbpdAeVppgMcEFY5FQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650760618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=abSVuITei8PIEGSWNM7NwIqFhmyiInKd+zlD9/v1n/Y=;
	b=c6x2rrTDjmSOaY7ktFIVr8hQvMi7TqRY9VrHEP33vwZKsFDwHdRDJGn/YGCG0MlZ
	CGC/bCd7STYIxyivfW0S6Jbq1krLfTFRLOnXOvhO+ePq+SZrd3BtYSHawAtrsfnULHW
	/dVF9n3ssP6oinJ5dC08DzC9hWpUVuVYjXVpKx74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059001117-7e825cce-03bc-497a-a2df-2217250a301c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4fb86ef155cabd08444b9f2ec90035f79217d470f0fbe6c07dc1441ef769987
Date: Sun, 24 Apr 2022 00:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650760618
