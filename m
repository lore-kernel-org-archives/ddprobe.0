Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DBC7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647997585;
	h=To:Subject:From:Message-Id:Date;
	bh=jTWT21v9XQ98I8HcmzdNUVu/AMQon4WmUuRSJ1OqYuI=;
	b=fRDAQpvQ4rX5l4RH/Whq+gkDsyaCBqtW18Q99miMV4VEUHHS7lmSWH4x5FZKrkui
	FyehVrOfjR7YWNtXQVp0q0jHBKB/Opn0d6uFiYqH0BM1Ube4qDdvDftwELTGRSMSmiZ
	ROj0SnThzKK24VqepuDxkcxDCCX/N4PA04z1YvDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647997585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jTWT21v9XQ98I8HcmzdNUVu/AMQon4WmUuRSJ1OqYuI=;
	b=eQxPOE9tiRl+41Lrh1avP4+lGKqfcKyqrmToTZhd4DB89wPsN19BA5owCGrfadkv
	JuVsxHQjt49pD3C2otmoS8q5WdG1YciKXMfUs+oCF/CBuakIXk5bEoHAZNbfzQ3B3Px
	Lzo4KrSHQwRr783Sn3wqydSn0Bn/a8HJkOQkzYFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb44f85c1-214cde96-7cf1-4a97-808f-273561d4266f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df10ae0c02de227ec9bd87f379817c7a5d555cd9719af9423ffde72cd18bf808
Date: Wed, 23 Mar 2022 01:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647997584
