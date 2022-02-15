Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D641164
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644889885;
	h=To:Subject:From:Message-Id:Date;
	bh=kBJC70153AfRaHt20JuUfZMtwITE2FaI/zteC26+/sU=;
	b=kyrAGbM0qmI5FGRCiZ4e4yFkwddNpSUZMO1QJ8Gcbz4W5Ia+Suahkm/F7jP5QfqP
	onubHvNAc+mpEenFfkmsntR2322xA12q21VbRSI7Pej/eb2p1AnxK8APiMU5zypd+O7
	TE0dPb3bGGhhbAnyn9FEJrXxlBcpr1StL/H/spRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644889885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kBJC70153AfRaHt20JuUfZMtwITE2FaI/zteC26+/sU=;
	b=TM6trwYEw5Ck0eg08uWrqSMHIQiw5KbvYzHL7H06wBXALNREsv7ikR9Ag7LDruKI
	h/51vik67rgEVUjNG3jbr+TAgCCwO9lBqAsCdLFCyhO9oK4GLRfh6VcEOO+hoWk+uZz
	XRGaigsrNyXqT6ekRlS4m5Ltm+SjjsYHMah59QRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb13c84d-1a117359-f114-4da3-ac10-084f6f70e918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47b46c38927cc30b248d0dc6699937ad59227a215ecc0478b1856d3b18f4f9c3
Date: Tue, 15 Feb 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644889884
