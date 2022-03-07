Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC0E3B37
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646655985;
	h=To:Subject:From:Message-Id:Date;
	bh=YUqOSuk+rQmDDPNXsfy0jWGzrpq1Vh78r2iKsez8HMM=;
	b=irbk6RhiYbMglblC55jh+lFvKjurkSR/okhzfMoBhPYoY4E+6fr7UZlivXpwtNeP
	0teDXgnkM662zt2cZ1Br8l9sjZAO1biWcUfxWhKQXtjhbNFH+k9NVYOhVA9f/FkKAHh
	tv2wnKrc/f7DJm0/JvOjrodB4S6jPvaB4wxILu/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646655985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YUqOSuk+rQmDDPNXsfy0jWGzrpq1Vh78r2iKsez8HMM=;
	b=Wir6SlKbkN9IqleabxXzuW/+xz/lMW1EKHadeNkRQSh7y32cxPfE8BjPY7cl/Pzb
	Ezr8zKhpUkRlm0a6oYqi5UfDvDujJ/Kb6gawtOR0zu6QIA/SCel6g5usISt6LN6ztaB
	EceoNGkX6t/0rxRhH4/s/QAZk4vo5yu99/1Tn6jo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6458547f-fd7c59f7-3f18-434d-a73e-422fc8db2cbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35d6a4cf21c5d7770968d00aef5cf86b8bddedcaeb2c987430f91a508e72f0d5
Date: Mon, 7 Mar 2022 12:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646655984
