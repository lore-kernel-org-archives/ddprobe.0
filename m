Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919CC807
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 11:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651835939;
	h=To:Subject:From:Message-Id:Date;
	bh=QS4+qij+akHoq6BKVU7aF3cTRNUJ0lDqiL0X77bs+1U=;
	b=Jjxx4CPbxt+rMcomtGTA2JknzDQKk1+YiO3yDph0zhp1fqYN1c6xcP0MXMdy3clQ
	aFi7xwiqCnsFyXBo9DjtWbzTxvBmEfCmVk9ajdKxX9q/pBoKZq63szjFJt1FY+/MD7A
	/AT3vXB+y5N75rgB1VHowiraraj/9nTFGyWpij3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651835939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QS4+qij+akHoq6BKVU7aF3cTRNUJ0lDqiL0X77bs+1U=;
	b=CGM5T/7sI/KFIOAeeTN7wM44nOk9J9OZyjo2+DksKQFVP6hLeG9+I+mQfGaTXY3+
	HwcHCljI0zanx7fkLvqztIfkewyYsv5Blj7wBmny56K5zewXdHj6DxxziF9TPis55PP
	+UH7U8fBW7biyww1AuIiTzTt3oGwpO8n5Tm355/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180991825ef-00eac703-84fa-4d7b-8159-c104cf54ac1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45f42a807c4714ca8699346f25f6743f52e0553a37cb1faa34db20112bc94f67
Date: Fri, 6 May 2022 11:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651835938
