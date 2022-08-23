Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683E5A3D
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661235052;
	h=To:Subject:From:Message-Id:Date;
	bh=xfYGKd9oqlRS9fvb/0tsOedbP3uR5Pf7Q19MoSPx2Ww=;
	b=UQ7FlkvJyNptg9Jr+7JcTRfdhJkPlbrZhHmP2CAFpKnjJBgjUecE1rhmyJ01HS4/
	xkSbJ9I8mAF9DM4uiY0VVX92MQ6tNHZasp+qP0jmzVq+91tZc1KlnnJbvpKjjV6i9dw
	DcKqkPmNTC23Jcu1yBPM/GhO4Q2qOMlCKj2B1cAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661235052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xfYGKd9oqlRS9fvb/0tsOedbP3uR5Pf7Q19MoSPx2Ww=;
	b=MC+A30dkmt1yh7C8qe6GkIjD90dCSBDLa0xf9jsWmX3Gy8oqg6PsJOVqmocbTqWn
	/MBUD499RJL1qqWQa7/9FaURmg35UOYCAEUCpFwSCk/w7Rd7IYGy1G31W6acAwK2wPo
	PBgu2DbWik+M9TiOXa51CbIaMTJ8MNOyvnlRlEN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c953401a-41339399-c134-4825-8661-d06ab974a2a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dccef9ffe520f7075dd3bbec08da3cc383423fe6a25aa4323940132f1700ab20
Date: Tue, 23 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661235052
