Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0831633C9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 22:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651615798;
	h=To:Subject:From:Message-Id:Date;
	bh=oXujy/+dVVoW7BDYOKXYLBaBZiK+Nw0XC/g6PENSczk=;
	b=N/Rwqwqvd/RhbCNMG0BmhCE6W6WryeQ9xV6SnvxA4ZvhycwxstoV7+qZs8Xl9ZmG
	RUrp0hMlWQ3GZiUMM0MQwaBpzzhBjvWTqdh7+hLBvwVq1KoYLgIwzRcdrLCMUbc5hws
	lRunLqtqIErMRaovq08qL1PmLpDbp2R1DhLgjT2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651615798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oXujy/+dVVoW7BDYOKXYLBaBZiK+Nw0XC/g6PENSczk=;
	b=AjDs737Y5NCgPF3i26DPxTNW8ffGtBbW3tBMTa/pMSJp91JJ8qTh4CXrycAWcKfe
	2p3lYZ0foCkj+W919bDIbDCNW9SLf6L1AxTS0pm8CJbVyQKtMHuxoh/aSULd7i5TiUn
	cUyUVxZhiKmML1fXav05bCi0qQLRac6pgGOZNWUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808bf91412-f6a71463-ff87-411f-a687-4521b28ae274-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76d2834f11efbbf550a32c9dd6c4b6b8dd2b55a0c636796a4f5895251f0bcdfa
Date: Tue, 3 May 2022 22:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651615798
