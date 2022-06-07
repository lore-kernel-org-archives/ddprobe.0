Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49127F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 10:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654598339;
	h=To:Subject:From:Message-Id:Date;
	bh=OtPupV0Ig22WbJnlfstYfjBBr6bRw0E7WTAM1aIT/70=;
	b=Nm2sD/GskdYXFeHDQt+DNyDh9Q1YdiLIQicMOAG4eG6jAl1D/Ph+7s3PEZtLjdA9
	VAVk0WcDot0uevqOzu0nzxZsxDFTD9eY8kqxI+Ih7LQrbMGipAjgY76gh0Fxd/7wyYr
	ZTH3H5z8LQVapr9iwmsamXj76BS4/ajJIj7JxiPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654598339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OtPupV0Ig22WbJnlfstYfjBBr6bRw0E7WTAM1aIT/70=;
	b=hVXdJtAsAMO0i4Vz8FY1GO+mAfg5NaML8t1BXSYtvKblIX+0jdkqWP6PqK5nyUJJ
	ZmGeE99wCqyRGfjlFXYZcnc+e57l4s1q+3a7Lm3Lp+F3uunC/NhdvevpOOparbduDxB
	Ajl2HWKzxpCGW3DLskjoTuNo9GpauAwiBmoL6vBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813dbf0aaa-77e8dce6-390a-4365-94da-3eed9d6f9800-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f278fa997dfd5e6887ac7ac87beb73d0fc35eef3a7edf5bcd9c20ea43a2c2b
Date: Tue, 7 Jun 2022 10:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654598339
