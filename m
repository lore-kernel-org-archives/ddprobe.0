Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74B64C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647609985;
	h=To:Subject:From:Message-Id:Date;
	bh=lzbUBxKMlkRGD805shb6LuXtmy1N2LUbd4y2/iL9L7s=;
	b=W2iMGyp5DNe40E1rjDsabSTkmWc6rtydMYGe+qQwDWCkxObUH9zjpr//A1JPgiZk
	bKqbanr78Mjlir0n6usjIiypyE9gJuXU1sR2nQQhxxge9yC2VMBpAwpLosN5Fe/+uCn
	ec7ZbqEEk6GTPiCV+pAPaxDeOqFc2R/UiZ0aYZ3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647609985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lzbUBxKMlkRGD805shb6LuXtmy1N2LUbd4y2/iL9L7s=;
	b=GZM/4XrAeHDgYgOcFo0yOHhuvi8dpozo3sZgYNIe9HZa98BvXGj0VnTlLvHEUi/g
	ftASFAXCEow7HGMhwnMlDlmMMUxhp8hZx86L3J3zEd4SX+uhd+dAlk+pxSaxiSBh7XK
	qtqog0XE3McELGC/Yj45pynIxWeFZQJeytoexPC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d3536e1-62bdb6fa-fa77-4da2-8ce5-210cd830d692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13b13f5196d96698e979c930b5f0350feaf2f31a0b32632a74efd32ff69c56ce
Date: Fri, 18 Mar 2022 13:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647609984
