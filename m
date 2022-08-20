Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F472F51
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661029853;
	h=To:Subject:From:Message-Id:Date;
	bh=zVcC+EizI+3pyNeT8OGvqowPaDEYEt4t3gOPQz1aOS4=;
	b=Z/Ui55pCRWi4xyGejKuTekzTvEPUWMnjsy5j1SzhDynJPU9cLTWByZUpQXuRwwsU
	eMjG5RH9v24DcknsKrFiKe4VyoxKOLSwTWoBmzdWLB59tX/vs4hZkVv9LeLspSgVx1n
	vldWoFbqcHZd5AeuLTqwJCisIuHbgXUqMJNgvkPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661029853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zVcC+EizI+3pyNeT8OGvqowPaDEYEt4t3gOPQz1aOS4=;
	b=R11OCsOJNYXmvONiYG5ckXdkeaDRyWp6fX/UVVVhYJiTG1i7lT0JXfHdpoHHxxkI
	nnZHazalRNTeouG0+KuKcYHTzomeDVbrBAejmT82h/8uSjR6Pa9siYWp5R95H9Ohjiu
	8CkiHsC0VyYQH+FkfA59MRRa450Dfz9FIapqRYag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd18256f-fd76a564-65ab-4569-8cf0-ac29da59f9ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fca06174275debf2c4dd6706037e1ea3bf24d77592cc09f719f7edba97e35b7
Date: Sat, 20 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661029852
