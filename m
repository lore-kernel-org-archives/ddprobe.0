Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5596923CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 14:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648218478;
	h=To:Subject:From:Message-Id:Date;
	bh=AEWvjoZGWHEjR0j+R+sNC9XvXUyX9cuDw9AZT+ib/6c=;
	b=AZYRwu8CSassJjIUUFTKPEgzu5aCAXw1Y4XXY979PM5qx3ZTqS6aEuMQ5qoGGUhQ
	nLpc3cPJ6BrzKJBGSdhiL5AA4zuX3mvWed/c+cau8G1dYoahfwNf8vv1cFGOa4ZwMyP
	3hlqqZJrTONlj0DztnJKNIEKvRnzy9zyFSW6vJFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648218478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEWvjoZGWHEjR0j+R+sNC9XvXUyX9cuDw9AZT+ib/6c=;
	b=kOae3IT9D5hBhxdJWwPu+OCHLBlwjo0HbW1FixcRMwi/MbivE/pMlOwX4owOC1XF
	ohv0BW6yondQgLu53EgbxwAGh7anb0G1RU+g+PIJ9KmtH6c0gh+nq2FgdCSOwV0wwZ9
	q2W4RrWjStGynaA/TzCLUwiaZNfpAO3YUkvQDcxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc17a16b6-df57a3bb-af9d-41ea-a1cb-fd08450cedbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5231989c9d415fb2b8b418712f5e5fd26522ad636863fe74f230ca0c31cd20a4
Date: Fri, 25 Mar 2022 14:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648218478
