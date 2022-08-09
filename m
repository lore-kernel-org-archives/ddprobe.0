Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596FD4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660059652;
	h=To:Subject:From:Message-Id:Date;
	bh=3PKH6mqOB09xVkZ+hi0UQMRXviDy6jfa1sO31CnXP6I=;
	b=CXG234gecpRWjnfz/hTZLSirGtnV+ff/CPE6jqncwAOspL+w07xwmroJIWdSSOIn
	f354tJLiYXnNZubnNTa79JbSJu0nBef1NcC1qX1tboq0/8WR4jFJ67F9evZG7i8jtzl
	OIt3H86J/6zFE2uFfRWr87drgD8TKk5MGhiwmBy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660059652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3PKH6mqOB09xVkZ+hi0UQMRXviDy6jfa1sO31CnXP6I=;
	b=hwJ13/PDLLtRat5FcXB21uiaZ6t3SI9dUiRiOsXaXbIrW9U6Mm3QEyJ/poLZYiZ6
	k6Oq+W7t1fyJfXS0omuqptxKkZEMl4SFbXCogn9cJr22Ny0pu4lOHrru9ljsHXNGzMG
	qC1SUTlQI9gfHKnvO956HNCAcNRYCDevz5Z3ZZGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182834411c9-c7f30297-e619-4716-b6f1-8de8437b2440-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6982464b0ceae3a179740458b7d5634eb9f302e0fbe22de8b59e5f49c522d99
Date: Tue, 9 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660059652
