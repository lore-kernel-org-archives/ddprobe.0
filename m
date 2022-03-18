Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C458415A7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647621685;
	h=To:Subject:From:Message-Id:Date;
	bh=lIYjpinJgCb4ap8eRajvs+eWrXk4qlxh0atfprdZcgY=;
	b=m35/2lxVQGOmcTBc7iJZjZYkRDxdw0LRRNUYzKpo5JZ3BbXd9BNUljJp7TkxKXGH
	d81ix8lluv6/zWDIN6GT+48U1fmMI2LKbIh1CtOvLyvHUTqYecKj9JX2f52eNkl/JqQ
	1rsHKjOO1gcHhRzQhF16dIHenzq+3Dn74zDHHtHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647621685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lIYjpinJgCb4ap8eRajvs+eWrXk4qlxh0atfprdZcgY=;
	b=F3/ky91y4yxpperjteiZuYuBmvauggwexTPBMDw7xQvMrNHC9xr/liFga9fCGWrq
	45W9rUF4hwxt4sblTyDLriXU0hDEUiioGFKmLvzGungOK65PSHdf6+bO0MyQU/QOJYE
	yxo5i3/7jA0DtbO/ao1s5T03+gS/4cD7JlyalNcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9de7be8d-9cd10c08-6cd0-4be7-a5aa-01a43456856b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38eb3f1b144eac153e8b2744274c8c5f236a59281834a0e3f116375a9241f983
Date: Fri, 18 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647621684
