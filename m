Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5292C3D6B
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647473784;
	h=To:Subject:From:Message-Id:Date;
	bh=PIQmsi5x2LN8+j5BW+3N6oh2KniUcXY0NoEW4mqiqKA=;
	b=ItOv8n1XClYEhlA+j85jJ7qcU3mMCysq0WmUsBzpHqyifxCRGidp8r2s1YAA0vU7
	PIfOKdQdFjGP1JLzL0CN7oK6sird2VFKQPJiRtVj/DNSlUo4fbibCuBpP0AIW7AO0oc
	2jJ7NRZIVHY/QFRzQxN/RdZAGkh4H2LlwCzAYSAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647473784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PIQmsi5x2LN8+j5BW+3N6oh2KniUcXY0NoEW4mqiqKA=;
	b=OM3qUfwVuyGvP60mSbWvKS1uxbmhGschIP66ooL5vAVn9Pp9NJFEKHza08rQ6u/V
	1M6nJYnoNw/Bow0J/DYG1L0dj8+KT9vjhMlO43wj/xwwYF2N9QxaPwltDaQEDao+3JJ
	9oilJRjoEPOAA0HA847Xb5LEcZNzDlJyuDstFvzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9516f7b9-7356456d-2c34-46b5-8769-c92e75e12f99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb3f78ec6a653304a3c50277b8108ffc226176bb1e3b811f95f04728b2684440
Date: Wed, 16 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647473784
