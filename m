Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BF13D7C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656595612;
	h=To:Subject:From:Message-Id:Date;
	bh=9k4DLh5aBAXHHvkH9WhBlCGIdHNTEchwROKEVcCxp8E=;
	b=XnX9C8MjgsfJU3Qj1OlijNJawLD5CwDjUnQSWoIEjpSS6zqqcPqbxRYGDv1kakzi
	XtaZBhRV+wVorb9oqK0LBIUrEoAmOcR6nNjn8zTZztC8rYtQMWn4gG/mm0av8SK9KGh
	7E+noh43SVyiC9d9qvahITxoeYGEYNaZea5lPzGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656595612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9k4DLh5aBAXHHvkH9WhBlCGIdHNTEchwROKEVcCxp8E=;
	b=dsxt+7KFxooumBZZRheQ19s7vE2eL7+0xyq7S7ASba79hDSeyE/ibHkCpQPwjJU8
	aMYh4LRc9pKNitwDfFJQXXA+whLHbkeh0txJ+l3InVkLh9uvdHQKr2Hcy8OcGj6098J
	q8rV8itqZgQg/UiUKdcLSdzo2YSAW4d+7J4sYHx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4cb025f-f90cf393-d201-4bf9-9950-0430e20ac194-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07cdc4b480ca6bd9aba228f4c50b22a299c36d46b40ce3ed93d78f52bc2c1ff4
Date: Thu, 30 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656595612
