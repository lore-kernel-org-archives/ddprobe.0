Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E332C9C
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652215679;
	h=To:Subject:From:Message-Id:Date;
	bh=UuBCvv25zRwjB2h/8IisCOUC/AJBXUoLuVWLyJZVWck=;
	b=F/Xuw/AwM/P9ARoUnMlSDiA6XeF0QaErD/uRtDVFsuR1J9ok0oNkpKnYlGe+2liq
	/ng5r11J77lFr7c0EBZBzJmY0hnpXII8UeINP8iZl3I0ENALWiNvzZLL2J3Qv2HMhbJ
	XmUCHFMlbIYW9VH1gGla272+xb50I+wCOeuAZ/bI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652215679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UuBCvv25zRwjB2h/8IisCOUC/AJBXUoLuVWLyJZVWck=;
	b=VCszWQTk/ynWo3LOOpvM/ifmbHF7ioP7Jtw0AxnXrxlTAR/qgTp7y04iaOk/RZYD
	73m8gL5XMXK9sL9hHRwf0plOwz9eKguYZiw2innteie4ixOpqjd04U0qmUGxMDXoXOs
	nPnhh+hqOCc1dX8AJbRFrqXqJgrOoC5eTCVjwof4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afba8943-886421c5-ca29-4c5c-a663-c032d480beff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba6de708d157edf9bd64e596f929f9d11481d3e87449c5b736dcaaef239a9705
Date: Tue, 10 May 2022 20:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652215679
