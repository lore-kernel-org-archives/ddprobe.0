Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8881DC8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644877284;
	h=To:Subject:From:Message-Id:Date;
	bh=QEWbvAY9CYYxmDrZNlxYu/lsRFBXbG6FhG1X0245mKw=;
	b=cyvQxmsXEdTsedaKVPGVPHmK6ahdb7KokwUIu4S4TIHp2pz2AX20WkHVFW6H6NUS
	ErX5nbxKyAPKYBvheSQAVyVQ6VWRMCdQbh5ExH+e50d6Qn1tUlQUajqEXk1cRfH0ik2
	17OHTiQmLekG868FuGuM4rOlLa1TavVIug/1Xz3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644877284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QEWbvAY9CYYxmDrZNlxYu/lsRFBXbG6FhG1X0245mKw=;
	b=LHmg3ay58Q0QUViWnv3ox7LWVXH0iUdykRa9pxVJCzdNpJze1c5TE2vr/oGnTlTu
	1vb6ZhPZtU/rNTd5Ru0196+G+3TaOekaLWMtqBm7hw9HXICJmAVr22q7HwjZ9qYMr7t
	wESbYYjL7PIBYs0Tds5tBRex2PZA6SVpiRwnGqoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa5385cc-26ca7672-349a-4773-b831-6cdf7026eaa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9353906030667ff025c9b7c040372ce908e410354d23f66a220e6355bf541786
Date: Mon, 14 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644877284
