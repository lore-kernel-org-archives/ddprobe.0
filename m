Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A727E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646823984;
	h=To:Subject:From:Message-Id:Date;
	bh=SH4MZsb29dNFi2OJsSw0bvkCIaHYPKF5Q6hN5QH313Y=;
	b=gCrFCp0O4vGquFbZbGIUKNbGJu39RupRgnfnA8oPVYmLgfW2jMMiADLnnfd4ZFXk
	RmXpJGH3lnncLoQmbrtGIDjtbInlrD537YYmVkOKNNez5rYqKeXhcAyFAEnK9rucUt3
	17K1U9atZnQqPm6Gh+6X3WNYo0YKnVa9cMg7nLnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646823984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SH4MZsb29dNFi2OJsSw0bvkCIaHYPKF5Q6hN5QH313Y=;
	b=W2r2pdi2L8vOWIOxw9qbC/cLdSMZjKdrmd9K8GASlvtQSVRW30JM6YdtVMii3I1f
	LdqluiUwr1BJ9dc5E6zpncxM44Q9W2pZlp1nhWXro2j6Kw5SYNcqT60wwGNkUosVURj
	GH6iPMVxjKxR5Kzd6ZT9p3fyy+Ja+1Z+2zKbbPzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e5bceba-2e278610-e6bc-4cde-992e-578d7f0f46fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 740a7e3698003d08d86ff586ee890977d6c991551cbaba998fc387d55c68303a
Date: Wed, 9 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646823984
