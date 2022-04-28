Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2322EC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 10:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651140358;
	h=To:Subject:From:Message-Id:Date;
	bh=QCKmSYNwcz+ZyDoQfdEHxILhylCimTLsEEzD6ufKmbc=;
	b=lwIBlPn3oYzbXIAJBwU6ZJMpCjvJUokG0hbo04fZIl4ZGDGW53jEM39fltud7SWD
	Saj4yE0oTTJuy2cWO+wmVYzZVdWImyVbvh8WkpgbTfE9p0OAor5DhvhV4S+S1r3gDn4
	beoyhZB/5OXOtfz2MzpVZl3QG52Vf8NmY1HbJqNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651140358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QCKmSYNwcz+ZyDoQfdEHxILhylCimTLsEEzD6ufKmbc=;
	b=TLZOCFgdfmNAh65AnoYsaE3UYmWH4NwJnuN+umJDI2ubSFIO24t/yUkFEZhXFcC6
	y4H0YppJ1PaRwX9MMvwF6u9U6ZvWcMBNbLVEva7oPYJoMf4ZEYz7diGKmHc/8Scigg1
	y4JjMTDtOM9suHrwyUBvIuOkb0FtvO+MH1F7X4jU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806fa2708c-964587b2-37ff-475a-8cc8-bee5ab171f29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38758ea0a100efbefa9f15213dad44666b3e0784a80106c626946169acf12181
Date: Thu, 28 Apr 2022 10:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651140358
