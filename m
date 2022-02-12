Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3D17A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 13:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644671456;
	h=To:Subject:From:Message-Id:Date;
	bh=9opkj0N0H7Tyls3umLYe5ghr0Oe807ygN9IsAUsBfvw=;
	b=OLXeQ0wSUqqT1nPF6x05RzUIEzgcu12rHx5n788rhHSJmQSLbUOu+Uj4Uz1JXuEi
	wOxLpwmU1NZFNcKbEMgwtxb2U3CFGeQbhQ4xxS3PBqkdlSI25RA1xPrnGieM9fi6F8n
	O5/smM7/6DEgmT+gR/5kyIF3cXi264KwsoWSFj0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644671456;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9opkj0N0H7Tyls3umLYe5ghr0Oe807ygN9IsAUsBfvw=;
	b=ZcixtFhIJPclsWR1HqIkmc04lWnEaayGlDqNW0nyKOlqnZ2BQ8ULGMLngQU3NOAm
	xTytJoo8ELdVDVt7ktdhyw1XbDkazqG+MBpG1LS7t823LMIgcZZgZvpjEJrTOZGQDdz
	P4MYGG7qsrejQvtsoJSqqK4r5lcuCSt7il58VLds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee0ed245-3cab9ebb-cc68-4d54-9018-9c180d689d03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c889d0ef707f2018765b0e909bf064332929ba53ee052482086fc614289f02b
Date: Sat, 12 Feb 2022 13:10:55 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644671455
