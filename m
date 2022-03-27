Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256787E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 23:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648424038;
	h=To:Subject:From:Message-Id:Date;
	bh=yHwRRNiXMxkdJ/i+JbsbhvvMUyqh62cQTEYUuA5k+w8=;
	b=NR2KhD8ktbQENDUcEU6CMeCkH4sOu7CdVQpz7JCzrpXKndOvjzCssypn6c61143w
	2lHo2ZVlY3vNozCri0+jmOuoaoN2rcS8XM2gGuZPJN3K3t9ou5Byn20FmYsmzAEIyCv
	MDEiXNKvPqqY30jM+GxDAuH43mSbFJNlFDrkSkoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648424038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yHwRRNiXMxkdJ/i+JbsbhvvMUyqh62cQTEYUuA5k+w8=;
	b=kt+NHKqKsCKjW0jvMdzULDIut3LH9tt+GXcxSJ4LzX+zOL+5Cgm5ExRfJnTRtwEe
	TfHyUFVguTIE+Cl6yS3ero8yfx3k2g4nq45TCFZP/4g7aYZIBAP0DpKWVRT72p2zKu2
	E63zIfu9iBWouj0s3GmIw4z5JXgP+oNfHlYi0+P0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcdbaaf99-c3a055d2-549f-441b-b319-4f964d9e0b10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46abd147ec8e4c97a8670f505ef685350e9eaf9bdab1eee76755e83ece39d1e9
Date: Sun, 27 Mar 2022 23:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648424038
