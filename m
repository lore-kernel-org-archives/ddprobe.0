Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1746DEA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 09:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654247219;
	h=To:Subject:From:Message-Id:Date;
	bh=wJ8V0y8jzHJAMUaqzvUY+LmjS+U42djuYjIeF9BHRAg=;
	b=HF1essOqItQCmOu9W0Y2OdqfM5RKbGjnzlWw3jsHnSJ9pv+IUi0DBIJIyMtYggW5
	3X/N6eAdh3juzLbwGtoqseHRZo7QsBwYOoDCZE08+dsguzIMKDDWLuxroAYAv8egvxQ
	pIqMH/IyZH6ssVb7uBcTTG2Z6Hv57kThHumlWIzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654247219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJ8V0y8jzHJAMUaqzvUY+LmjS+U42djuYjIeF9BHRAg=;
	b=NZMIUvrx+sNjBE3i0hTReQlhQiTc2vkrIolUXrexJZxZB+TdDb19u1wAfvdyM/L1
	8sEIUegh3OAgXNoNl8X3FggS4ikVl3SfUyLWaQh5mQjvpH+DgVMwe1UdsnCK6oEDTr+
	aZ+Y/OL1hiCBMJb2MNmjDuEeHTbb/c+dGviBw+sQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128d1604d-9ac1f807-e736-4b2b-8158-14305706480e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 717dd47d2c55080fa49e5b7df324237deeba9be672d39823f9555c84f7033061
Date: Fri, 3 Jun 2022 09:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654247219
