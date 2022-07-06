Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F285210D
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657093612;
	h=To:Subject:From:Message-Id:Date;
	bh=KPtgqn2blT5IVRkJnenwlGeJtHNo05wllgoZtAPzii0=;
	b=YmBb3W6OUuprL6oNsk43zd/hVucXWLGJZxCuy0S8BbTc/5RRab0omVJmNcctX7Ms
	dm0SQ81IPpfqzXZpdoHi4WLc2IxhpmW49o8I094UWUOGiriOSYbUYvLwDyIJeRdwjuN
	a9eY7pwRO+Eudy7GIDvqXu0dVKheqUwTM6iKqoFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657093612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KPtgqn2blT5IVRkJnenwlGeJtHNo05wllgoZtAPzii0=;
	b=MIbWTyHpDS09Ed7gA2gxcJUBbk6+1tYI6LdmV6MdtVvOqVWjy3n9VEDiyWVqRFn2
	XEuTWyDAC/8Vs3zZIiybu6YWVEWZu47I3vmWYr8paNsQToKX/hmdt7WQo7TawtLmTki
	H5nBSUA33Dcqy74VkMYXgcN//dB8xctPI+1xAmcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d279e339-60e4897b-99a0-4c32-9f57-04f52a4a9579-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dcc81bba0e3a1a11c90df1951274c60c8d33e13d15dedb22cf452dd9f782394
Date: Wed, 6 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657093612
