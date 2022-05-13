Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B72420EA
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 03:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652414339;
	h=To:Subject:From:Message-Id:Date;
	bh=dozXK304X5NRVS2ZiIcpPHdjKSwJu7x0o4oh11YvOUM=;
	b=bBfHsdL+m8rJsWgknPElqz49AmgH0MuARK58r7ykadGkZLbM0GidrUP14amj80J7
	WV0flqaAODdQPwdHeL2ahVeNI8o+6HllCsGtAEdw9W1xYF3DeCcYEfgsUZzyeRdaJxR
	YmfnNJFi2JxT2DEu7wvtuBzdGA0du0RmzAnJeVG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652414339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dozXK304X5NRVS2ZiIcpPHdjKSwJu7x0o4oh11YvOUM=;
	b=bNz7C5VDYHvg+KfjTsNjVg2vc5jOrKYlgA45jEr574s8PJUYIXMW3ILqXjUf3kA1
	rzvs/dpFPypF/vkYusCvt1roTfljEJxr5ky8eva9zYJDlRMGmkl+TRzDBCvrkkB9v6q
	Ou9OajBBXboxYigtRf6kLDm7OQxFfdKiFis6HnoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb91d8db-af6cf267-c520-4afb-8688-0593dad0345f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54af33db5aa76765b41f8e888ddc62e812468f50bdb337872c9b650e49fb7d78
Date: Fri, 13 May 2022 03:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652414339
