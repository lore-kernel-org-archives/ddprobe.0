Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9594F4A1E
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658253413;
	h=To:Subject:From:Message-Id:Date;
	bh=yQYsAhK8kwLdRf8iXOpkJZ/vj8ahOjDztwShi57afOg=;
	b=DbxDpvcA1EQfXieWbO+OvYekdAnRMsAsfUpZqCS0uRXHaNMjmalOwlC1Gn16+uEL
	AD5Bkg5/tWOiKygKj4Xz8sMUkIqhLjORH6900xcwRuLhZkD9mt3G/QyfMbH1cU8CEdb
	AfxDsef/ea2LgW5JW6QaqRX+oJH1/RMdmPDsyGac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658253413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yQYsAhK8kwLdRf8iXOpkJZ/vj8ahOjDztwShi57afOg=;
	b=WIn0qAruhQ3yfioA8AG5FWv0/qiMfHm7zwtSwZg9lUCQEJdWa0FE+u+27Y7ak+VD
	LmnMUYq8ZsdiWMi+bzrs7TPZ3ye8wa4HfabUJzMLIxVaK6lp7GRaXFISKMBdKG0lu05
	+X7N+aEP168XVkvDwgoSgwEAdrzwLHR/NfQwCi2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182179b07b5-fb6dbf6d-a605-4e1b-9082-700a116c3e23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60ca721953e872b2a3d3a26866500db16e52e100fc751c77a30c749ad809e377
Date: Tue, 19 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658253412
