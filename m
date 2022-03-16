Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CC038C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647436585;
	h=To:Subject:From:Message-Id:Date;
	bh=uWP0bxWC8gON7NZAybwbem0Cx5SZ6ZZRpAM9+uDqaWE=;
	b=fsA7KRMCrm5lm/uSItxn9J1Z53sRQ9CoStvAGkLl8PAvQpS4nkKfVP2b5oIka1KN
	p4Va8H7GuR7xAYQo2Sljz7fj172E0/L+I3CvGS+aied/F2JEbFqHzwOw4te2CbWuFmp
	DPcuoxTDHP3mxdb6ZkUN6T4z6iORe2I3emv71JdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647436585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uWP0bxWC8gON7NZAybwbem0Cx5SZ6ZZRpAM9+uDqaWE=;
	b=RA8Pf/5VxspF03O9jqnThlzHcPRKR39nvEulImsirFFfF/k0MGGKTlbLJYg3KvK5
	fKdF7UpVMYXIqNIMGmR+LiNNWEFa5l5bF/rtO8e5rspg2tC8wyVQkWch6bGvD9vvgtb
	w8UbHBbxAOHjpXj5BCduNH9G8TOqztdEjqrjBr8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92df5730-81287fc7-30a4-44a7-8c55-45f27073d72d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5ed8ae47950eaad905808292d8c7412c5c0d143c665a10f62cd7e40158f6d28
Date: Wed, 16 Mar 2022 13:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647436584
