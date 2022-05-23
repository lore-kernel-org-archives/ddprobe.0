Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D5E3D7A
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 20:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653339419;
	h=To:Subject:From:Message-Id:Date;
	bh=Wph9i4HPVFhdJmrTZ7y4l7NlNWR3E6x7XYeMON2w6OI=;
	b=VYnplDJFVFreQsfPBXol0Xehq6o7ZyqnWamHmuxyETz9DoklgfRt9Vdvx/7dsVT9
	qZFB5saFXNcwdHR4zIxhvSW4jxl2OMKUiYUouPrNwLHxO2yI+6jL7gj2q7hZGtH5jFT
	0FBYX1IdnJW7cYk1eDeWVIwGdgAlRe9Ri5oJlBeo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653339419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wph9i4HPVFhdJmrTZ7y4l7NlNWR3E6x7XYeMON2w6OI=;
	b=G76tbcXxPsww/qsBY5oD4a1NMIP8mNmrL0n4ou72oLTZNznjzqXQlNEKQZSpd42m
	BOD2SrTIwQeicDUeO3Gr1Ed5+4KefXDlqCARHAfUDFfnPGvxHiJxgnebPeiYglMDKUz
	tBaASRP37sre+JO802jJa0sLHNF+RHOyXnicLivg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2b57299-ee53980f-d043-495e-88d4-1f7610aee660-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f5aed0bf3e725a808be153e6b9632ac1009728c6a70a136960ccdb3b54ecaf9
Date: Mon, 23 May 2022 20:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653339419
