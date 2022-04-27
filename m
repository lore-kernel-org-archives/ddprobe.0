Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A42F2F4D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 21:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651093978;
	h=To:Subject:From:Message-Id:Date;
	bh=tF7bsT7HXtUKmrY7wM3vaiYQtyLhjMitWkYtMxXkI08=;
	b=YInqXGyhDvgJA/Q6XQS2AJvkgEb1X/CHB3MHt8Vh+Et7aYOrO+TR1s/6wFRDgq+g
	nmkeIVWOYHBG/5anTs0g9sxFg27O/GplsOWwlUi+qoOPhYfGppul4g/dZOTiPTR/pxx
	koHDtpCgKE3rmhdssDgqHSIIINJVQ+fAsawDRCw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651093978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tF7bsT7HXtUKmrY7wM3vaiYQtyLhjMitWkYtMxXkI08=;
	b=V56INGcz2E30ZTwc4AgTWsCzUAKXpDTGA6XAFE0VKgFMQSAfcAeGk8/hlmqXZ4N5
	cB7ZqqTqsIHUAZg76sDyYwKQr3kffpbyrILZW8OuTWhowcH3tYkHHrN4dA3eumU9/54
	nu8bdbhHQt9Esm6kK0tpqDUun24IAf7hn+LechW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806cdebc9a-80da81cb-bf49-478d-80c9-35e20237a615-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee01e5d25a57be6201b60b0ae36021152055c538fd004c80c0f6a1ef1c7a5be9
Date: Wed, 27 Apr 2022 21:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651093978
